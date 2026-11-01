.class public final synthetic Landroid/support/v4/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/za;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iput-object p2, p0, Landroid/support/v4/za;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/za;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-object v1, p0, Landroid/support/v4/za;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->while(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
