.class final Lkotlin/io/if$if;
.super Lkotlin/collections/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/if$if$do;,
        Lkotlin/io/if$if$for;,
        Lkotlin/io/if$if$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/for<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0008\u0010\u000bB\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0082\u0010J\u0008\u0010\u0008\u001a\u00020\u0007H\u0014R\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "kotlin/io/if$if",
        "Lkotlin/collections/for;",
        "Ljava/io/File;",
        "root",
        "Lkotlin/io/if$do;",
        "try",
        "case",
        "Landroid/support/v4/ub2;",
        "do",
        "Ljava/util/ArrayDeque;",
        "Lkotlin/io/if$for;",
        "for",
        "Ljava/util/ArrayDeque;",
        "state",
        "<init>",
        "(Lkotlin/io/if;)V",
        "if",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final for:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lkotlin/io/if$for;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic new:Lkotlin/io/if;


# direct methods
.method public constructor <init>(Lkotlin/io/if;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-direct {p0}, Lkotlin/collections/for;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlin/io/if$if;->for:Ljava/util/ArrayDeque;

    .line 3
    invoke-static {p1}, Lkotlin/io/if;->case(Lkotlin/io/if;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkotlin/io/if;->case(Lkotlin/io/if;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/io/if$if;->try(Ljava/io/File;)Lkotlin/io/if$do;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lkotlin/io/if;->case(Lkotlin/io/if;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/io/if$if$if;

    invoke-static {p1}, Lkotlin/io/if;->case(Lkotlin/io/if;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lkotlin/io/if$if$if;-><init>(Lkotlin/io/if$if;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/for;->if()V

    :goto_0
    return-void
.end method

.method private final case()Ljava/io/File;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlin/io/if$if;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/if$for;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lkotlin/io/if$for;->if()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lkotlin/io/if$if;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lkotlin/io/if$for;->do()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/super;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/io/if$if;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v2}, Lkotlin/io/if;->if(Lkotlin/io/if;)I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lkotlin/io/if$if;->for:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Lkotlin/io/if$if;->try(Ljava/io/File;)Lkotlin/io/if$do;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final try(Ljava/io/File;)Lkotlin/io/if$do;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/io/if$if;->new:Lkotlin/io/if;

    invoke-static {v0}, Lkotlin/io/if;->do(Lkotlin/io/if;)Lkotlin/io/for;

    move-result-object v0

    sget-object v1, Landroid/support/v4/ab0;->do:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lkotlin/io/if$if$do;

    invoke-direct {v0, p0, p1}, Lkotlin/io/if$if$do;-><init>(Lkotlin/io/if$if;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/w31;

    invoke-direct {p1}, Landroid/support/v4/w31;-><init>()V

    throw p1

    .line 3
    :cond_1
    new-instance v0, Lkotlin/io/if$if$for;

    invoke-direct {v0, p0, p1}, Lkotlin/io/if$if$for;-><init>(Lkotlin/io/if$if;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/io/if$if;->case()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lkotlin/collections/for;->for(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/for;->if()V

    :goto_0
    return-void
.end method
