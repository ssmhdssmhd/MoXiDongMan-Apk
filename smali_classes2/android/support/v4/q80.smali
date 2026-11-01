.class public Landroid/support/v4/q80;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/q80$for;,
        Landroid/support/v4/q80$if;,
        Landroid/support/v4/q80$do;
    }
.end annotation


# static fields
.field private static final do:I = 0x193

.field private static final for:I = 0x198

.field private static final if:I = 0x194

.field private static final new:I = 0x1f4

.field private static final try:I = 0x1f8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/Throwable;)Landroid/support/v4/q80$if;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u7f51\u7edc\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\uff01"

    const/16 v2, 0x3ee

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/q80$if;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    .line 3
    iput-object v1, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_5

    .line 5
    move-object v0, p0

    check-cast v0, Lretrofit2/HttpException;

    .line 6
    new-instance v1, Landroid/support/v4/q80$if;

    const/16 v2, 0x3eb

    invoke-direct {v1, p0, v2}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    .line 7
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result p0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_4

    const/16 v0, 0x194

    if-eq p0, v0, :cond_3

    const/16 v0, 0x198

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u670d\u52a1\u5668\u9047\u5230\u4e86\u4e00\u4e2a\u672a\u66fe\u9884\u6599\u7684\u72b6\u51b5\uff0c\u65e0\u6cd5\u5b8c\u6210\u5bf9\u8bf7\u6c42\u7684\u5904\u7406"

    .line 8
    iput-object p0, v1, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "\u8bf7\u6c42\u8d85\u65f6,\u8bf7\u91cd\u8bd5"

    .line 9
    iput-object p0, v1, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 10
    iput-object p0, v1, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p0, "\u670d\u52a1\u5668\u5df2\u7ecf\u7406\u89e3\u8bf7\u6c42\uff0c\u4f46\u662f\u62d2\u7edd\u6267\u884c\u5b83"

    .line 11
    iput-object p0, v1, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 12
    :cond_5
    instance-of v0, p0, Landroid/support/v4/q80$for;

    if-eqz v0, :cond_6

    .line 13
    check-cast p0, Landroid/support/v4/q80$for;

    .line 14
    new-instance v0, Landroid/support/v4/q80$if;

    iget v1, p0, Landroid/support/v4/q80$for;->code:I

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    .line 15
    iget-object p0, p0, Landroid/support/v4/q80$for;->message:Ljava/lang/String;

    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 16
    :cond_6
    instance-of v0, p0, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_e

    instance-of v0, p0, Lorg/json/JSONException;

    if-nez v0, :cond_e

    instance-of v0, p0, Landroid/net/ParseException;

    if-eqz v0, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_8

    .line 18
    new-instance v0, Landroid/support/v4/q80$if;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 19
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 20
    :cond_8
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_9

    .line 21
    new-instance v0, Landroid/support/v4/q80$if;

    const/16 v1, 0x3ed

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    .line 22
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 23
    :cond_9
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_a

    .line 24
    new-instance v0, Landroid/support/v4/q80$if;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u5f53\u524d\u7f51\u7edc\uff01"

    .line 25
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 26
    :cond_a
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_b

    .line 27
    new-instance v0, Landroid/support/v4/q80$if;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u65e0\u6548\u7684host\uff0c\u8bf7\u68c0\u67e5\u6e90\u7684\u57df\u540d"

    .line 28
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 29
    :cond_b
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_c

    .line 30
    new-instance v0, Landroid/support/v4/q80$if;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    .line 31
    iput-object v1, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 32
    :cond_c
    instance-of v0, p0, Ljavax/script/ScriptException;

    if-eqz v0, :cond_d

    .line 33
    new-instance v0, Landroid/support/v4/q80$if;

    const/16 v1, 0x3ef

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "JS\u89e3\u6790\u9519\u8bef"

    .line 34
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 35
    :cond_d
    new-instance v0, Landroid/support/v4/q80$if;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0

    .line 37
    :cond_e
    :goto_1
    new-instance v0, Landroid/support/v4/q80$if;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Landroid/support/v4/q80$if;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "\u89e3\u6790\u9519\u8bef"

    .line 38
    iput-object p0, v0, Landroid/support/v4/q80$if;->message:Ljava/lang/String;

    return-object v0
.end method
