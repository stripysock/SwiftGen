//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import Commander
import PathKit
import GenumKit

let storyboardsCommand = command(
  outputOption,
  templateOption("storyboards.stencil"),
  Option<String>("sceneEnumName", "Scene", flag: "e", description: "The name of the enum to generate for Scenes"),
  Option<String>("segueEnumName", "Segue", flag: "g", description: "The name of the enum to generate for Segues"),
  Argument<Path>("PATH", description: "Directory to scan for .storyboard files. Can also be a path to a single .storyboard", validator: pathExists)
) { output, template, sceneEnumName, segueEnumName, path in
  let enumBuilder = StoryboardEnumBuilder()
  if path.`extension` == "storyboard" {
    enumBuilder.addStoryboardAtPath(String(path))
  }
  else {
    enumBuilder.parseDirectory(String(path))
  }
  
  do {
    let template = try GenumTemplate(path: try fileExists(path: template))
    let rendered = try template.render(enumBuilder.stencilContext(sceneEnumName: sceneEnumName, segueEnumName: segueEnumName))
    output.write(rendered)
  } catch {
    print("Failed to render template \(error)")
  }
}
