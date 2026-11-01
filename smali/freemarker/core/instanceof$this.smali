.class Lfreemarker/core/instanceof$this;
.super Lfreemarker/core/instanceof$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "this"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/instanceof$if;-><init>()V

    return-void
.end method


# virtual methods
.method public t(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d1$do;->try()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
