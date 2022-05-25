// 自動モック。常にundefinedを返す。

import SoundPlayer from "../lib/sound-players";
import SoundPlayerConsumer from "../lib/sound-player-consumer";
import {
  afterEach,
  beforeAll,
  beforeEach,
  describe,
  expect,
  it,
  vi,
} from "vitest";
vi.mock(SoundPlayer);

describe("hello", () => {
  it("test", () => {
    const test = new SoundPlayer();
    test.playSoundFile("Hello");
    expect(1).toBe(1);
  });

  it("test2", () => {
    const mock = vi
      .spyOn(SoundPlayer.prototype, "playSoundFile")
      .mockImplementation(() => {
        return 1;
      });
    const test = new SoundPlayer();
    const a = test.playSoundFile("Hello2");
    expect(a).toBe(1);
  });

  afterEach(() => {
    vi.clearAllMocks();
  });
});
