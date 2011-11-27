(require 'snippet-helpers)

;; Find buster-snippets root directory
(setq buster-snippets-root (file-name-directory
                            (or (buffer-file-name) load-file-name)))

;; Load snippets
(yas/load-directory (expand-file-name "snippets" buster-snippets-root))

(provide 'buster-snippets)