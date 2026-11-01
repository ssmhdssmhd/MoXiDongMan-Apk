.class public final Landroid/support/v4/sm1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/wp0;
    name = "RegexExtensionsJDK8Kt"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/text/MatchGroupCollection;",
        "",
        "name",
        "Landroid/support/v4/mx0;",
        "do",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    pn = "kotlin.text"
.end annotation


# direct methods
.method public static final do(Lkotlin/text/MatchGroupCollection;Ljava/lang/String;)Landroid/support/v4/mx0;
    .locals 1
    .param p0    # Lkotlin/text/MatchGroupCollection;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/z41;
    .end annotation

    const-string v0, "$this$get"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/text/MatchNamedGroupCollection;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlin/text/MatchNamedGroupCollection;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lkotlin/text/MatchNamedGroupCollection;->get(Ljava/lang/String;)Landroid/support/v4/mx0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Retrieving groups by name is not supported on this platform."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
