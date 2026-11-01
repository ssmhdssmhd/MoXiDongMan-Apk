.class public abstract Lcom/wsw/cospa/utils/DocumentFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;
    }
.end annotation


# instance fields
.field private final do:Lcom/wsw/cospa/utils/DocumentFile;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/DocumentFile;->do:Lcom/wsw/cospa/utils/DocumentFile;

    return-void
.end method

.method public static break(Landroid/content/Context;Landroid/net/Uri;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/a;

    invoke-direct {v0, v1, p0, p1}, Lcom/wsw/cospa/utils/a;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static goto(Ljava/io/File;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 2

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/protected;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/utils/protected;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/File;)V

    return-object v0
.end method

.method public static this(Landroid/content/Context;Landroid/net/Uri;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/a;

    invoke-direct {v0, v1, p0, p1}, Lcom/wsw/cospa/utils/a;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract case()Z
.end method

.method public abstract catch()Ljava/lang/String;
.end method

.method public class()Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/DocumentFile;->do:Lcom/wsw/cospa/utils/DocumentFile;

    return-object v0
.end method

.method public abstract const()Ljava/lang/String;
.end method

.method public abstract do()Z
.end method

.method public abstract else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
.end method

.method public abstract final()Landroid/net/Uri;
.end method

.method public abstract for(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
.end method

.method public abstract if()Z
.end method

.method public import(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/DocumentFile;->native(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract native(Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;Ljava/util/Comparator;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract new(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
.end method

.method public abstract public()[Lcom/wsw/cospa/utils/DocumentFile;
.end method

.method public return(Ljava/util/Comparator;)[Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ">;)[",
            "Lcom/wsw/cospa/utils/DocumentFile;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public abstract static()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract super()Z
.end method

.method public abstract switch()V
.end method

.method public abstract throw()Z
.end method

.method public abstract throws(Ljava/lang/String;)Z
.end method

.method public abstract try()Z
.end method

.method public abstract while()J
.end method
