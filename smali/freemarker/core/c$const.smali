.class Lfreemarker/core/c$const;
.super Lfreemarker/core/c$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "const"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/c$if;-><init>(Lfreemarker/core/c$do;)V

    return-void
.end method


# virtual methods
.method public s(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/template/utility/super;->x(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
