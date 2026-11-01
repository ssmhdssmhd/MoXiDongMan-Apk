.class public Landroid/support/v4/vi2;
.super Landroid/support/v4/qi2;
.source "SourceFile"


# instance fields
.field public for:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/qi2;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Landroid/support/v4/vi2;->for:I

    return-void
.end method


# virtual methods
.method public do(Lorg/antlr/v4/runtime/tree/ParseTree;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/vi2;->for:I

    invoke-static {p1, v0}, Landroid/support/v4/v82;->try(Lorg/antlr/v4/runtime/tree/ParseTree;I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
