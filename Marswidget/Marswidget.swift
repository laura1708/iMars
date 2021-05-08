//
//  Marswidget.swift
//  Marswidget
//
//  Created by Mariia Zhurina on 22/03/2021.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), imageUrl: nil, configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), imageUrl: nil, configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        PodAPI.fetch { data in
            if let imageString = data.hdurl,
               let imageURL = URL(string: imageString) {
                entries.append(SimpleEntry(date: Date(),
                                           imageUrl: imageURL,
                                           configuration: configuration))
                
                let timeline = Timeline(entries: entries, policy: .atEnd)
                completion(timeline)
            }
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let imageUrl: URL?
    let configuration: ConfigurationIntent
}

struct MarswidgetEntryView : View {
    var entry: SimpleEntry

    var body: some View {
        if let url = entry.imageUrl,
           let imageData = try? Data(contentsOf: url),
           let image = UIImage(data: imageData) {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 100)
                
               
        } else {
            Text("Loading...")
        }
    }
}

@main
struct Marswidget: Widget {
    let kind: String = "Marswidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            MarswidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct Marswidget_Previews: PreviewProvider {
    static var previews: some View {
        MarswidgetEntryView(entry: SimpleEntry(date: Date(), imageUrl: nil, configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
