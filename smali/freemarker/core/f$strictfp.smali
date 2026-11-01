.class Lfreemarker/core/f$strictfp;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "strictfp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/strictfp;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    new-instance p2, Lfreemarker/template/return;

    invoke-direct {p2}, Lfreemarker/template/return;-><init>()V

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method
