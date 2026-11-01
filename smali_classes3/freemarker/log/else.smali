.class public Lfreemarker/log/else;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "freemarker.log.else"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final do()Z
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/log/else;->do:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {v0}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v0

    sget-object v1, Lfreemarker/log/else;->do:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    .line 4
    throw v0
.end method
