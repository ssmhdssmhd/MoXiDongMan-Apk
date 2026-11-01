.class public final Lkotlin/text/MatchResult$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/MatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0004\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0005\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0006\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0007\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0008\u001a\u00020\u0002H\u0087\nJ\t\u0010\t\u001a\u00020\u0002H\u0087\nJ\t\u0010\n\u001a\u00020\u0002H\u0087\nJ\t\u0010\u000b\u001a\u00020\u0002H\u0087\nJ\t\u0010\u000c\u001a\u00020\u0002H\u0087\nJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rR\u0019\u0010\u0013\u001a\u00020\u000f8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "kotlin/text/MatchResult$if",
        "",
        "",
        "do",
        "for",
        "new",
        "try",
        "case",
        "else",
        "goto",
        "this",
        "break",
        "if",
        "",
        "class",
        "Lkotlin/text/MatchResult;",
        "Lkotlin/text/MatchResult;",
        "catch",
        "()Lkotlin/text/MatchResult;",
        "match",
        "<init>",
        "(Lkotlin/text/MatchResult;)V",
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
.field private final do:Lkotlin/text/MatchResult;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/text/MatchResult;)V
    .locals 1
    .param p1    # Lkotlin/text/MatchResult;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/MatchResult$if;->do:Lkotlin/text/MatchResult;

    return-void
.end method

.method private final break()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final case()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final do()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final else()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final for()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final goto()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final if()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final new()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final this()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final try()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/text/MatchResult$if;->catch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final catch()Lkotlin/text/MatchResult;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/MatchResult$if;->do:Lkotlin/text/MatchResult;

    return-object v0
.end method

.method public final class()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/MatchResult$if;->do:Lkotlin/text/MatchResult;

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lkotlin/text/MatchResult$if;->do:Lkotlin/text/MatchResult;

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
