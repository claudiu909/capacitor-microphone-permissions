export interface CapacitorMicrophonePermissionsPlugin {
    checkPermission(): Promise<void>;
    requestPermission(): Promise<void>;
}