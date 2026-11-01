.class public Landroid/support/v4/s71;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/yl2;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/zl2$if;->do:Landroid/support/v4/zl2;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/zl2;->do(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static do(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/zl2$if;->do:Landroid/support/v4/zl2;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/zl2;->if(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Landroid/support/v4/yl2;->if:Z

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Landroid/support/v4/yl2;->do:Z

    return-void
.end method

.method public static for(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/yl2;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/zl2$if;->do:Landroid/support/v4/zl2;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/zl2;->do(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/yl2;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-boolean v0, Landroid/support/v4/yl2;->if:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK Need Init First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static new(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/yl2;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/zl2$if;->do:Landroid/support/v4/zl2;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/zl2;->do(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/yl2;->do:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/zl2$if;->do:Landroid/support/v4/zl2;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/zl2;->do(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
