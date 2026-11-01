.class Lfreemarker/log/for$if;
.super Lfreemarker/log/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/log/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final extends:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/log/if;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public else(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public for(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public new(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public package(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public private(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/log/for$if;->extends:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method
