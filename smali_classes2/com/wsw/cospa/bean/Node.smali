.class public Lcom/wsw/cospa/bean/Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/bean/Node;",
            ">;"
        }
    .end annotation
.end field

.field public isDir:Z

.field public name:Ljava/lang/String;

.field public parent:Lcom/wsw/cospa/bean/Node;

.field public path:Ljava/lang/String;

.field public selected:Z

.field public size:J

.field public time:J

.field public zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    return-void
.end method
