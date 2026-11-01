.class Lcn/qqtheme/framework/picker/FilePicker$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/qqtheme/framework/picker/FilePicker;->volatile()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcn/qqtheme/framework/picker/FilePicker;


# direct methods
.method public constructor <init>(Lcn/qqtheme/framework/picker/FilePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker$do;->do:Lcn/qqtheme/framework/picker/FilePicker;

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
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker$do;->do:Lcn/qqtheme/framework/picker/FilePicker;

    invoke-static {p1}, Lcn/qqtheme/framework/picker/FilePicker;->w(Lcn/qqtheme/framework/picker/FilePicker;)Lcn/qqtheme/framework/adapter/new;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/qqtheme/framework/adapter/new;->do(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/qqtheme/framework/picker/FilePicker;->x(Lcn/qqtheme/framework/picker/FilePicker;Ljava/lang/String;)V

    return-void
.end method
