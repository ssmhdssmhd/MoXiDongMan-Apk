.class public final synthetic Landroid/support/v4/bv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

.field public final synthetic if:Lcom/wsw/cospa/bean/RipeFile;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/bv0;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iput-object p2, p0, Landroid/support/v4/bv0;->if:Lcom/wsw/cospa/bean/RipeFile;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/bv0;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, p0, Landroid/support/v4/bv0;->if:Lcom/wsw/cospa/bean/RipeFile;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->implements(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
