.class public final synthetic Landroid/support/v4/xb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xb0;->do:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xb0;->do:Ljava/util/List;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->for(Ljava/util/List;)V

    return-void
.end method
