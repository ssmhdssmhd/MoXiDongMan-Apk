.class public Landroid/support/v4/lc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:Lorg/antlr/v4/runtime/tree/ParseTree;

.field private final if:Ljava/lang/String;

.field private final new:Lorg/antlr/v4/runtime/tree/pattern/if;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/tree/pattern/if;Ljava/lang/String;ILorg/antlr/v4/runtime/tree/ParseTree;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/lc1;->new:Lorg/antlr/v4/runtime/tree/pattern/if;

    .line 3
    iput p3, p0, Landroid/support/v4/lc1;->do:I

    .line 4
    iput-object p2, p0, Landroid/support/v4/lc1;->if:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/support/v4/lc1;->for:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-void
.end method


# virtual methods
.method public case(Lorg/antlr/v4/runtime/tree/ParseTree;)Landroid/support/v4/kc1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->new:Lorg/antlr/v4/runtime/tree/pattern/if;

    invoke-virtual {v0, p1, p0}, Lorg/antlr/v4/runtime/tree/pattern/if;->try(Lorg/antlr/v4/runtime/tree/ParseTree;Landroid/support/v4/lc1;)Landroid/support/v4/kc1;

    move-result-object p1

    return-object p1
.end method

.method public do(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/tree/ParseTree;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/kc1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->new:Lorg/antlr/v4/runtime/tree/pattern/if;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/tree/pattern/if;->for()Lorg/antlr/v4/runtime/goto;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/antlr/v4/runtime/tree/xpath/do;->if(Lorg/antlr/v4/runtime/tree/ParseTree;Ljava/lang/String;Lorg/antlr/v4/runtime/goto;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/tree/ParseTree;

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v4/lc1;->case(Lorg/antlr/v4/runtime/tree/ParseTree;)Landroid/support/v4/kc1;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/kc1;->else()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public else(Lorg/antlr/v4/runtime/tree/ParseTree;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->new:Lorg/antlr/v4/runtime/tree/pattern/if;

    invoke-virtual {v0, p1, p0}, Lorg/antlr/v4/runtime/tree/pattern/if;->try(Lorg/antlr/v4/runtime/tree/ParseTree;Landroid/support/v4/lc1;)Landroid/support/v4/kc1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/kc1;->else()Z

    move-result p1

    return p1
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->if:Ljava/lang/String;

    return-object v0
.end method

.method public if()Lorg/antlr/v4/runtime/tree/pattern/if;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->new:Lorg/antlr/v4/runtime/tree/pattern/if;

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/lc1;->do:I

    return v0
.end method

.method public try()Lorg/antlr/v4/runtime/tree/ParseTree;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/lc1;->for:Lorg/antlr/v4/runtime/tree/ParseTree;

    return-object v0
.end method
