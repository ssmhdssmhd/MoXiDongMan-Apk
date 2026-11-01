.class Lcom/wsw/cospa/model/super$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/super;->final(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Lio/reactivex/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DocumentFile;

.field public final synthetic for:Landroid/content/ContentResolver;

.field public final synthetic if:Lcom/wsw/cospa/utils/DocumentFile;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iput-object p2, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    iput-object p3, p0, Lcom/wsw/cospa/model/super$do;->for:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v1, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {v0, v1}, Lcom/wsw/cospa/model/super;->do(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->switch()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->for:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v2, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {}, Lcom/wsw/cospa/model/super;->if()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/super;->for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->for:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v2, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    .line 4
    invoke-static {}, Lcom/wsw/cospa/model/super;->new()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/super;->for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->for:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v2, p0, Lcom/wsw/cospa/model/super$do;->do:Lcom/wsw/cospa/utils/DocumentFile;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/model/super;->try()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/super;->for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {}, Lcom/wsw/cospa/model/super;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/super;->case(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {}, Lcom/wsw/cospa/model/super;->new()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/super;->case(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/model/super$do;->if:Lcom/wsw/cospa/utils/DocumentFile;

    invoke-static {}, Lcom/wsw/cospa/model/super;->try()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/super;->case(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    .line 9
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
