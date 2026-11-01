.class public abstract Lorg/antlr/v4/runtime/atn/break;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/break$if;,
        Lorg/antlr/v4/runtime/atn/break$do;,
        Lorg/antlr/v4/runtime/atn/break$for;,
        Lorg/antlr/v4/runtime/atn/break$new;,
        Lorg/antlr/v4/runtime/atn/break$try;
    }
.end annotation


# static fields
.field public static final do:Lorg/antlr/v4/runtime/atn/break;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/break$try;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/break$try;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)Lorg/antlr/v4/runtime/atn/break;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    sget-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/atn/break$if;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/break$if;-><init>(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)V

    .line 3
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/break$if;->if:[Lorg/antlr/v4/runtime/atn/break;

    array-length p1, p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    .line 4
    aget-object p0, p0, p1

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static synthetic do(Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/break;->try(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)Lorg/antlr/v4/runtime/atn/break;
    .locals 2

    if-eqz p0, :cond_4

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/atn/break$do;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/atn/break$do;-><init>(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)V

    .line 3
    iget-object p0, v0, Lorg/antlr/v4/runtime/atn/break$do;->if:[Lorg/antlr/v4/runtime/atn/break;

    array-length p1, p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 4
    aget-object p0, p0, p1

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method private static try(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/atn/break;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/break$new;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/break;

    .line 3
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/break$new;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    check-cast v1, Lorg/antlr/v4/runtime/atn/break$new;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract for(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Landroid/support/v4/vo1;",
            ")Z"
        }
    .end annotation
.end method

.method public new(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/break;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Landroid/support/v4/vo1;",
            ")",
            "Lorg/antlr/v4/runtime/atn/break;"
        }
    .end annotation

    return-object p0
.end method
