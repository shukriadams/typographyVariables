module SCSSLint
    class Linter::TypographyVariables < Linter
        include LinterRegistry

        def visit_root(_node)
            @properties = ['font', 'font-family', 'font-kerning', 'font-size', 'font-stretch', 'font-weight', 'line-height', 'word-spacing']

            yield # Continue linting children
        end

        def visit_prop(node)
            property = node.name.join
            if @properties.include?property
                add_lint(node, "Type property \"#{property}\" is undesirable. Use a mixin or class to ensure type consistency.")
            end
        end
    end
end
