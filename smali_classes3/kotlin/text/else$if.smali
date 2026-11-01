.class public final Lkotlin/text/else$if;
.super Lkotlin/collections/do;
.source "SourceFile"

# interfaces
.implements Lkotlin/text/MatchNamedGroupCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/else;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/do<",
        "Landroid/support/v4/mx0;",
        ">;",
        "Lkotlin/text/MatchNamedGroupCollection;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006H\u0096\u0002J\u0013\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0008H\u0096\u0002J\u0013\u0010\n\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0096\u0002R\u0016\u0010\u000f\u001a\u00020\u00088V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlin/text/else$if",
        "Lkotlin/text/MatchNamedGroupCollection;",
        "Lkotlin/collections/do;",
        "Landroid/support/v4/mx0;",
        "",
        "isEmpty",
        "",
        "iterator",
        "",
        "index",
        "get",
        "",
        "name",
        "getSize",
        "()I",
        "size",
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
.field public final synthetic do:Lkotlin/text/else;


# direct methods
.method public constructor <init>(Lkotlin/text/else;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/text/else$if;->do:Lkotlin/text/else;

    invoke-direct {p0}, Lkotlin/collections/do;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Landroid/support/v4/mx0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/mx0;

    invoke-virtual {p0, p1}, Lkotlin/text/else$if;->do(Landroid/support/v4/mx0;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge do(Landroid/support/v4/mx0;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/collections/do;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Landroid/support/v4/mx0;
    .locals 3
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/else$if;->do:Lkotlin/text/else;

    invoke-static {v0}, Lkotlin/text/else;->do(Lkotlin/text/else;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/text/this;->try(Ljava/util/regex/MatchResult;I)Landroid/support/v4/dn0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/dn0;->goto()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    new-instance v1, Landroid/support/v4/mx0;

    iget-object v2, p0, Lkotlin/text/else$if;->do:Lkotlin/text/else;

    invoke-static {v2}, Lkotlin/text/else;->do(Lkotlin/text/else;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "matchResult.group(index)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Landroid/support/v4/mx0;-><init>(Ljava/lang/String;Landroid/support/v4/dn0;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;)Landroid/support/v4/mx0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Landroid/support/v4/ae1;->do:Lkotlin/internal/do;

    iget-object v1, p0, Lkotlin/text/else$if;->do:Lkotlin/text/else;

    invoke-static {v1}, Lkotlin/text/else;->do(Lkotlin/text/else;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lkotlin/internal/do;->for(Ljava/util/regex/MatchResult;Ljava/lang/String;)Landroid/support/v4/mx0;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/text/else$if;->do:Lkotlin/text/else;

    invoke-static {v0}, Lkotlin/text/else;->do(Lkotlin/text/else;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/support/v4/mx0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/collections/final;->strictfp(Ljava/util/Collection;)Landroid/support/v4/dn0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/final;->A0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lkotlin/text/else$if$do;

    invoke-direct {v1, p0}, Lkotlin/text/else$if$do;-><init>(Lkotlin/text/else$if;)V

    invoke-static {v0, v1}, Lkotlin/sequences/else;->q0(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
