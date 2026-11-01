.class public final synthetic Landroid/support/v4/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;

.field public final synthetic if:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fj;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;

    iput-object p2, p0, Landroid/support/v4/fj;->if:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/fj;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;

    iget-object v1, p0, Landroid/support/v4/fj;->if:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;Landroid/graphics/Bitmap;)V

    return-void
.end method
