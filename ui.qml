import QtQuick 2.5
import QtQml.Models 2.5

Rectangle {
	width: 200
	height: 200
	color: "black"

	DelegateModel {
		id: cpuModel
		model: ListModel {
			ListElement { usage: 0.1 }
			ListElement { usage: 0.2 }
			ListElement { usage: 0.3 }
			ListElement { usage: 0.4 }
		}
		delegate: Heatbar {
			value: usage
			width: parent.width
			height: 16
		}
	}

	ListView {
		anchors.fill: parent
		model: cpuModel
	}

	// simulate cpuModel change with random data
	Timer {
		interval: 250
		repeat: true
		running: true
		onTriggered: {
			let i = 0
			for (; i < cpuModel.model.count; i++) {
				cpuModel.model.setProperty(i, "usage", Math.random())
			}
		}
	}
}
