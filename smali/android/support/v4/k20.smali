.class public final synthetic Landroid/support/v4/k20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DocumentFile;

.field public final synthetic if:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k20;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iput-object p2, p0, Landroid/support/v4/k20;->if:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/k20;->do:Lcom/wsw/cospa/utils/DocumentFile;

    iget-object v1, p0, Landroid/support/v4/k20;->if:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/final;->do(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
