.class public final synthetic Landroid/support/v4/yw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/yw;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yw;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->if(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
