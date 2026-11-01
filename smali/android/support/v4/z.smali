.class public final synthetic Landroid/support/v4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/z;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->public(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
