.class public interface abstract Lorg/antlr/v4/runtime/tree/ParseTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/SyntaxTree;


# virtual methods
.method public abstract accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getChild(I)Lorg/antlr/v4/runtime/tree/ParseTree;
.end method

.method public abstract getParent()Lorg/antlr/v4/runtime/tree/ParseTree;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setParent(Landroid/support/v4/vo1;)V
.end method

.method public abstract toStringTree(Lorg/antlr/v4/runtime/goto;)Ljava/lang/String;
.end method
