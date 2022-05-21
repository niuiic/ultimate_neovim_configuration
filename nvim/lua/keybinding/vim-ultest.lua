local utils = require("utils")

utils.fn.map("n", ";j", "<Plug>(ultest-next-fail)", utils.var.opt)
utils.fn.map("n", ";k", "<Plug>(ultest-prev-fail)", utils.var.opt)
utils.fn.mapRegister({
    t = {
        name = "test",
        a = {
            "<cmd>Ultest<CR>",
            "run all tests",
        },
        f = {
            "<Plug>(ultest-run-file)",
            "run tests in the current file",
        },
        n = {
            "<cmd>UltestNearest<CR>",
            "run the test nearest to the cursor",
        },
        l = {
            "<cmd>UltestLast<CR>",
            "run the last test",
        },
        s = {
            "<cmd>UltestStop<CR>",
            "stop all tests in the current file",
        },
        j = {
            "<Plug>(ultest-summary-jump)",
            "jump to the summary window",
        },
    },
}, {
    mode = "n",
    prefix = "<leader>",
})
