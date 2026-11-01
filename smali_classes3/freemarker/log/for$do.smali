.class final Lfreemarker/log/for$do;
.super Lfreemarker/log/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field private static final finally:Ljava/lang/String; = "freemarker.log.for$do"


# instance fields
.field private final extends:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/log/if;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/log/for$do;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/log/for$do;->final(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public else(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lfreemarker/log/for$do;->finally:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v3, 0x28

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lfreemarker/log/for$do;->finally:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v3, 0x14

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public for(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/log/for$do;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public new(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lfreemarker/log/for$do;->finally:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public package(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lfreemarker/log/for$do;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public private(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lfreemarker/log/for$do;->finally:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$do;->extends:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method
