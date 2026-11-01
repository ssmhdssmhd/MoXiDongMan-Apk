.class public Lfreemarker/log/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/log/case$do;
    }
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
    new-instance v0, Lfreemarker/log/case$do;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/log/case$do;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method
