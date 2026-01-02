import globals from "globals";
import path from "node:path";
import { fileURLToPath } from "node:url";
import js from "@eslint/js";
import { FlatCompat } from "@eslint/eslintrc";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const compat = new FlatCompat({
    baseDirectory: __dirname,
    recommendedConfig: js.configs.recommended,
    allConfig: js.configs.all
});

export default [{
    ignores: ["docs/**/*.js", ".venv/**/*.js"],
}, ...compat.extends("eslint:recommended"), {
    languageOptions: {
        globals: {
            ...globals.node,
        },

        ecmaVersion: 2018,
        sourceType: "commonjs",
    },

    rules: {
        indent: ["error", 4],
        "linebreak-style": ["error", "unix"],
        quotes: ["error", "single"],
        semi: ["error", "always"],
        "no-console": "off",

        "no-unused-vars": ["error", {
            args: "none",
        }],

        complexity: ["error", 5],
        "max-lines-per-function": ["error", 35],

        "max-len": ["error", {
            code: 120,
            ignoreUrls: true,
        }],

        eqeqeq: ["error", "always"],
        curly: "error",
    },
}, {
    files: ["test/*.js"],

    rules: {
        "no-unused-vars": "off",
        "max-len": "off",
        "max-lines-per-function": "off",
    },
}];
