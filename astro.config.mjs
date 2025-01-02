// @ts-check
import { defineConfig } from 'astro/config';

// @ts-check
import node from "@astrojs/node";

// https://astro.build/config
export default defineConfig({
    output: 'server',
    adapter: node({
        mode: "standalone"
    })
});