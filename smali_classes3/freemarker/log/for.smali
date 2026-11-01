.class public Lfreemarker/log/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/log/for$if;,
        Lfreemarker/log/for$do;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lfreemarker/log/if;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/log/for$do;

    check-cast p1, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, p1}, Lfreemarker/log/for$do;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lfreemarker/log/for$if;

    invoke-direct {v0, p1}, Lfreemarker/log/for$if;-><init>(Lorg/slf4j/Logger;)V

    return-object v0
.end method
