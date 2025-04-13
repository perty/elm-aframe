# Notes to self

## Challenge of components

When working on the [Minecraft example](../examples/Minecraft/Minecraft.elm), I realized that custom component wasn't supported.

Components are references to JavaScript, how do we handle that in Elm?

There are two usages of components: reuse and custom implementation.

For reuse, we can just pass on the component as an attribute.

If we wish to implement a custom component in Elm, ports are needed.

Some Components are included in the library, but not all, there's a huge library at the [A-Frame wiki](https://aframe.wiki/en/#!index.md).

Currently, I am not fully understanding this.
