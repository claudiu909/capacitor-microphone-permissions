import Foundation
import Capacitor
import AVFoundation

@objc(CapacitorMicrophonePermissions)
public class CapacitorMicrophonePermissions: CAPPlugin {

    @objc func checkPermission(_ call: CAPPluginCall) {
        let status = AVAudioSession.sharedInstance().recordPermission
        if status == .granted {
            call.resolve()
        } else {
            call.reject("Microphone permission not granted")
        }
    }

    @objc func requestPermission(_ call: CAPPluginCall) {
        AVAudioSession.sharedInstance().requestRecordPermission { granted in
            if granted {
                call.resolve()
            } else {
                call.reject("Microphone permission denied")
            }
        }
    }
}