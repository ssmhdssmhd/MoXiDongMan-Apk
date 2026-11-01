.class Lcn/qqtheme/framework/picker/ComicFilePicker$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/qqtheme/framework/picker/ComicFilePicker;->volatile()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcn/qqtheme/framework/picker/ComicFilePicker;


# direct methods
.method public constructor <init>(Lcn/qqtheme/framework/picker/ComicFilePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/picker/ComicFilePicker$do;->do:Lcn/qqtheme/framework/picker/ComicFilePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/qqtheme/framework/picker/ComicFilePicker$do;->do:Lcn/qqtheme/framework/picker/ComicFilePicker;

    invoke-static {p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->w(Lcn/qqtheme/framework/picker/ComicFilePicker;)Lcn/qqtheme/framework/adapter/if;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/qqtheme/framework/adapter/if;->do(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/qqtheme/framework/picker/ComicFilePicker;->x(Lcn/qqtheme/framework/picker/ComicFilePicker;Ljava/lang/String;)V

    return-void
.end method
