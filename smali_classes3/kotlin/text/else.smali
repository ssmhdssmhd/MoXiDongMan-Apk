.class final Lkotlin/text/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/text/MatchResult;


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008#\u0010$J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016R\u001c\u0010\u0008\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\n8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lkotlin/text/else;",
        "Lkotlin/text/MatchResult;",
        "next",
        "Lkotlin/text/MatchGroupCollection;",
        "do",
        "Lkotlin/text/MatchGroupCollection;",
        "getGroups",
        "()Lkotlin/text/MatchGroupCollection;",
        "groups",
        "",
        "",
        "if",
        "Ljava/util/List;",
        "groupValues_",
        "Ljava/util/regex/Matcher;",
        "for",
        "Ljava/util/regex/Matcher;",
        "matcher",
        "",
        "new",
        "Ljava/lang/CharSequence;",
        "input",
        "Ljava/util/regex/MatchResult;",
        "()Ljava/util/regex/MatchResult;",
        "matchResult",
        "Landroid/support/v4/dn0;",
        "getRange",
        "()Landroid/support/v4/dn0;",
        "range",
        "getValue",
        "()Ljava/lang/String;",
        "value",
        "getGroupValues",
        "()Ljava/util/List;",
        "groupValues",
        "<init>",
        "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V",
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
.field private final do:Lkotlin/text/MatchGroupCollection;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private final for:Ljava/util/regex/Matcher;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final new:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/util/regex/Matcher;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/else;->for:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lkotlin/text/else;->new:Ljava/lang/CharSequence;

    .line 2
    new-instance p1, Lkotlin/text/else$if;

    invoke-direct {p1, p0}, Lkotlin/text/else$if;-><init>(Lkotlin/text/else;)V

    iput-object p1, p0, Lkotlin/text/else;->do:Lkotlin/text/MatchGroupCollection;

    return-void
.end method

.method public static final synthetic do(Lkotlin/text/else;)Ljava/util/regex/MatchResult;
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final if()Ljava/util/regex/MatchResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/text/else;->for:Ljava/util/regex/Matcher;

    return-object v0
.end method


# virtual methods
.method public getDestructured()Lkotlin/text/MatchResult$if;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/text/MatchResult$do;->do(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult$if;

    move-result-object v0

    return-object v0
.end method

.method public getGroupValues()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lkotlin/text/else;->if:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/text/else$do;

    invoke-direct {v0, p0}, Lkotlin/text/else$do;-><init>(Lkotlin/text/else;)V

    iput-object v0, p0, Lkotlin/text/else;->if:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlin/text/else;->if:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getGroups()Lkotlin/text/MatchGroupCollection;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/else;->do:Lkotlin/text/MatchGroupCollection;

    return-object v0
.end method

.method public getRange()Landroid/support/v4/dn0;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/this;->new(Ljava/util/regex/MatchResult;)Landroid/support/v4/dn0;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matchResult.group()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public next()Lkotlin/text/MatchResult;
    .locals 3
    .annotation build Landroid/support/v4/z41;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    invoke-direct {p0}, Lkotlin/text/else;->if()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lkotlin/text/else;->new:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lkotlin/text/else;->for:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lkotlin/text/else;->new:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher.pattern().matcher(input)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/text/else;->new:Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2}, Lkotlin/text/this;->do(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
