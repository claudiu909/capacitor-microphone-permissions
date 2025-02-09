import { registerPlugin } from '@capacitor/core';
import type { CapacitorMicrophonePermissionsPlugin } from './definitions';

const CapacitorMicrophonePermissions = registerPlugin<CapacitorMicrophonePermissionsPlugin>('CapacitorMicrophonePermissions');

export * from './definitions';
export { CapacitorMicrophonePermissions };