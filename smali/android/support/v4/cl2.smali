.class public Landroid/support/v4/cl2;
.super Landroid/support/v4/al2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/h4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/al2;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Lfreemarker/core/h4;

    invoke-virtual {p1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "{Error getting canonical form}"

    return-object p1
.end method
