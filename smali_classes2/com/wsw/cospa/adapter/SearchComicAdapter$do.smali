.class Lcom/wsw/cospa/adapter/SearchComicAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/SearchComicAdapter;->catch(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/adapter/SearchComicAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/SearchComicAdapter;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/SearchComicAdapter$do;->if:Lcom/wsw/cospa/adapter/SearchComicAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/SearchComicAdapter$do;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/SearchComicAdapter$do;->do:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->private(Ljava/util/List;)V

    return-void
.end method
