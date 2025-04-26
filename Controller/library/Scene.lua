---@meta
---@class Scene
---@field name string Scene name
---@field group string Scene group name
---@field state SceneState Scene state
---@field onstage boolean Whether the scene is affecting output of any fixtures
---@field custom_properties table A table of custom property keys and values
local Scene = {
    NONE = 0,
    STARTED = 1,
    RELEASED = 2,
}

---@alias SceneState
---| 0 NONE
---| 1 STARTED
---| 2 RELEASED

---Starts the scene.
function Scene:start() end

---Starts the scene and releases others
---@param group? string|integer Optional scene group name/number to release. Prepend the name with '!' to apply the action to all scenes except those in the group. Omit to release all scenes.
---@param fade? number Optional fade time to use when releasing other scenes, in seconds.
---@param same_group? boolean Optional flag to target the same group as the selected scene. This flag has no effect when group is set.
function Scene:start_release_others(group, fade, same_group) end

---Releases the scenes
---@param fade? number Fade time in seconds
function Scene:release(fade) end

---Toggles the playback of the scene, release if running, start if not running.
---@param fade? number Optional release fade time in seconds.
function Scene:toggle(fade) end

return Scene