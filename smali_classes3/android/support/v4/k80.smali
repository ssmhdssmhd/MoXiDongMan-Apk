.class public Landroid/support/v4/k80;
.super Landroid/support/v4/t52;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/tree/ErrorNode;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/t52;-><init>(Lorg/antlr/v4/runtime/Token;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/antlr/v4/runtime/tree/ParseTreeVisitor<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/tree/ParseTreeVisitor;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
