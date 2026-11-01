.class public Landroid/support/v4/cp1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/String; = "4.7"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "4.7"

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/support/v4/cp1;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/support/v4/cp1;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/support/v4/cp1;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/support/v4/cp1;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v1

    aput-object v2, v6, v0

    const-string p0, "ANTLR Tool version %s used for code generation does not match the current runtime version %s"

    invoke-virtual {v3, p0, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2
    if-eqz v4, :cond_3

    .line 4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v2, v3, v0

    const-string p1, "ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s"

    invoke-virtual {p0, p1, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    return-void
.end method

.method public static for()Ljava/lang/String;
    .locals 1

    const-string v0, "4.7"

    return-object v0
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x2d

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v0, :cond_1

    .line 5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1
    if-ltz v1, :cond_2

    .line 6
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
