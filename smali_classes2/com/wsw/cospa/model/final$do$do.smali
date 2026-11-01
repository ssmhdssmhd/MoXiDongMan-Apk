.class Lcom/wsw/cospa/model/final$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DocumentFile$DocumentFileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/final$do;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/final$do;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/final$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/final$do$do;->do:Lcom/wsw/cospa/model/final$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/wsw/cospa/utils/DocumentFile;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->catch()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
