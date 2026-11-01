.class public Landroid/support/v4/ps0;
.super Landroid/support/v4/is0;
.source "SourceFile"


# instance fields
.field public final abstract:[Ljava/lang/String;

.field public final continue:[Ljava/lang/String;

.field public final finally:Ljava/lang/String;

.field public final interface:[Lorg/antlr/v4/runtime/dfa/do;

.field public final package:Landroid/support/v4/static;

.field public final private:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final protected:Landroid/support/v4/ef1;

.field public final strictfp:[Ljava/lang/String;

.field private final volatile:Lorg/antlr/v4/runtime/Vocabulary;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/static;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Landroid/support/v4/cf2;->do([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/ps0;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/CharStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/static;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/ps0;-><init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/CharStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antlr/v4/runtime/Vocabulary;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroid/support/v4/static;Lorg/antlr/v4/runtime/CharStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/static;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p7}, Landroid/support/v4/is0;-><init>(Lorg/antlr/v4/runtime/CharStream;)V

    .line 4
    new-instance p7, Landroid/support/v4/ef1;

    invoke-direct {p7}, Landroid/support/v4/ef1;-><init>()V

    iput-object p7, p0, Landroid/support/v4/ps0;->protected:Landroid/support/v4/ef1;

    .line 5
    iget-object p7, p6, Landroid/support/v4/static;->case:Lorg/antlr/v4/runtime/atn/do;

    sget-object v0, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    if-ne p7, v0, :cond_2

    .line 6
    iput-object p1, p0, Landroid/support/v4/ps0;->finally:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Landroid/support/v4/ps0;->package:Landroid/support/v4/static;

    .line 8
    iget p1, p6, Landroid/support/v4/static;->else:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/ps0;->private:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p7, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Landroid/support/v4/ps0;->private:[Ljava/lang/String;

    array-length v1, v0

    if-ge p7, v1, :cond_0

    .line 10
    invoke-interface {p2, p7}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p7

    new-array p7, p7, [Ljava/lang/String;

    invoke-interface {p3, p7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/ps0;->abstract:[Ljava/lang/String;

    .line 12
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p4, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/ps0;->continue:[Ljava/lang/String;

    .line 13
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p5, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/ps0;->strictfp:[Ljava/lang/String;

    .line 14
    iput-object p2, p0, Landroid/support/v4/ps0;->volatile:Lorg/antlr/v4/runtime/Vocabulary;

    .line 15
    invoke-virtual {p6}, Landroid/support/v4/static;->try()I

    move-result p2

    new-array p2, p2, [Lorg/antlr/v4/runtime/dfa/do;

    iput-object p2, p0, Landroid/support/v4/ps0;->interface:[Lorg/antlr/v4/runtime/dfa/do;

    .line 16
    :goto_1
    iget-object p2, p0, Landroid/support/v4/ps0;->interface:[Lorg/antlr/v4/runtime/dfa/do;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 17
    new-instance p3, Lorg/antlr/v4/runtime/dfa/do;

    invoke-virtual {p6, p1}, Landroid/support/v4/static;->for(I)Landroid/support/v4/jx;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lorg/antlr/v4/runtime/dfa/do;-><init>(Landroid/support/v4/jx;I)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Landroid/support/v4/ks0;

    iget-object p2, p0, Landroid/support/v4/ps0;->interface:[Lorg/antlr/v4/runtime/dfa/do;

    iget-object p3, p0, Landroid/support/v4/ps0;->protected:Landroid/support/v4/ef1;

    invoke-direct {p1, p0, p6, p2, p3}, Landroid/support/v4/ks0;-><init>(Landroid/support/v4/is0;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V

    iput-object p1, p0, Lorg/antlr/v4/runtime/this;->if:Landroid/support/v4/extends;

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The ATN must be a lexer ATN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public class()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->abstract:[Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->finally:Ljava/lang/String;

    return-object v0
.end method

.method public for()Landroid/support/v4/static;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->package:Landroid/support/v4/static;

    return-object v0
.end method

.method public implements()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->strictfp:[Ljava/lang/String;

    return-object v0
.end method

.method public native()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->volatile:Lorg/antlr/v4/runtime/Vocabulary;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    return-object v0
.end method

.method public strictfp()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->continue:[Ljava/lang/String;

    return-object v0
.end method

.method public throw()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ps0;->private:[Ljava/lang/String;

    return-object v0
.end method
