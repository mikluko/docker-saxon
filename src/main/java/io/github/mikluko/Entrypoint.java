package io.github.mikluko;

import java.util.Arrays;

import org.jetbrains.annotations.NotNull;
import net.sf.saxon.Transform;
import net.sf.saxon.Query;

public class Entrypoint {
    public static void main(@org.jetbrains.annotations.NotNull String @NotNull [] args) {
        if (args.length == 0) {
            help();
            return;
        }
        switch (args[0]) {
            case "transform":
                Transform.main(Arrays.copyOfRange(args, 1, args.length));
                break;
            case "query":
                Query.main(Arrays.copyOfRange(args, 1, args.length));
                break;
            default:
                help();
                break;
        }
    }

    private static void help() {
        System.out.println("Usage:");
        System.out.println("  transform [-? | ...]");
        System.out.println("  query [-? | ...]");
    }
}
