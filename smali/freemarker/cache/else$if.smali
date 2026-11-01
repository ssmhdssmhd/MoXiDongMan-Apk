.class Lfreemarker/cache/else$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/cache/else;->findTemplateSource(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/cache/else;


# direct methods
.method public constructor <init>(Lfreemarker/cache/else;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    iput-object p2, p0, Lfreemarker/cache/else$if;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    iget-object v1, v1, Lfreemarker/cache/else;->do:Ljava/io/File;

    invoke-static {}, Lfreemarker/cache/else;->do()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfreemarker/cache/else$if;->do:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lfreemarker/cache/else$if;->do:Ljava/lang/String;

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object v1, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    invoke-static {v1}, Lfreemarker/cache/else;->if(Lfreemarker/cache/else;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    invoke-static {v3}, Lfreemarker/cache/else;->if(Lfreemarker/cache/else;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " resolves to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which  doesn\'t start with "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    .line 8
    invoke-static {v0}, Lfreemarker/cache/else;->if(Lfreemarker/cache/else;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_3
    :goto_1
    iget-object v1, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    invoke-static {v1}, Lfreemarker/cache/else;->for(Lfreemarker/cache/else;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfreemarker/cache/else$if;->if:Lfreemarker/cache/else;

    invoke-static {v1, v0}, Lfreemarker/cache/else;->new(Lfreemarker/cache/else;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v2

    :cond_4
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/cache/else$if;->do()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
