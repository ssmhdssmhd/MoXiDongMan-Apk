.class Lcom/wsw/cospa/activity/VersionDialogActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity;->const()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/VersionDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$if;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroidx/palette/graphics/Palette;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$if;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$if;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    const v1, 0x7f0e000f

    invoke-static {v0, p1, v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->new(Lcom/wsw/cospa/activity/VersionDialogActivity;II)V

    return-void
.end method
