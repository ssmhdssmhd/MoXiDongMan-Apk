.class public final synthetic Landroid/support/v4/jw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/import;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/import;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/jw;->do:Lcom/wsw/cospa/utils/import;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jw;->do:Lcom/wsw/cospa/utils/import;

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/import;->if(Lcom/wsw/cospa/utils/import;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
