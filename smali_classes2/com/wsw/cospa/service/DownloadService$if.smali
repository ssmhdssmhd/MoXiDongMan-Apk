.class public Lcom/wsw/cospa/service/DownloadService$if;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/service/DownloadService;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/service/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService$if;->do:Lcom/wsw/cospa/service/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/wsw/cospa/service/DownloadService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$if;->do:Lcom/wsw/cospa/service/DownloadService;

    return-object v0
.end method
