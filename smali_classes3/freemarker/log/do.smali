.class public Lfreemarker/log/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/log/do$do;
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
    new-instance v0, Lfreemarker/log/do$do;

    .line 2
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/log/do$do;-><init>(Lorg/apache/commons/logging/Log;)V

    return-object v0
.end method
