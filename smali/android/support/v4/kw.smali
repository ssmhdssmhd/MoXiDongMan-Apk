.class public final synthetic Landroid/support/v4/kw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/import;

.field public final synthetic if:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/import;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kw;->do:Lcom/wsw/cospa/utils/import;

    iput-object p2, p0, Landroid/support/v4/kw;->if:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kw;->do:Lcom/wsw/cospa/utils/import;

    iget-object v1, p0, Landroid/support/v4/kw;->if:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/utils/import;->new(Lcom/wsw/cospa/utils/import;Landroid/app/Activity;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
