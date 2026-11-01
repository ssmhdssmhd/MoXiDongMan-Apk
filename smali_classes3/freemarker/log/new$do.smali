.class Lfreemarker/log/new$do;
.super Lfreemarker/log/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final extends:Lorg/apache/log/Logger;


# direct methods
.method public constructor <init>(Lorg/apache/log/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/log/if;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public else(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public for(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isFatalErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public new(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public package(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public private(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/new$do;->extends:Lorg/apache/log/Logger;

    invoke-virtual {v0}, Lorg/apache/log/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method
