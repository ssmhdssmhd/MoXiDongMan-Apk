.class public Lcom/wsw/cospa/widget/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field private final currentValue:Ljava/lang/String;

.field private final mCallback:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private final mNumberPicker:Landroid/widget/NumberPicker;

.field private final maxValue:Ljava/lang/String;

.field private final minValue:Ljava/lang/String;

.field private newVal:I

.field private oldVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/NumberPicker$OnValueChangeListener;III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "\u6700\u5927\u503c"

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->maxValue:Ljava/lang/String;

    const-string p1, "\u6700\u5c0f\u503c"

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->minValue:Ljava/lang/String;

    const-string p1, "\u5f53\u524d\u503c"

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->currentValue:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mCallback:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    const-string p1, "\u8bbe\u7f6e\u6570\u5b57"

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "\u786e\u5b9a"

    .line 9
    invoke-virtual {p0, p2, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    const-string v0, "\u53d6\u6d88"

    .line 10
    invoke-virtual {p0, p2, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c0135

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p2, 0x7f09030c

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    iput-object p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 15
    invoke-virtual {p1, p3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 16
    invoke-virtual {p1, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 17
    invoke-virtual {p1, p5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mCallback:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget-object p2, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    iget v0, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->oldVal:I

    iget v1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->newVal:I

    invoke-interface {p1, p2, v0, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "\u6700\u5927\u503c"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u6700\u5c0f\u503c"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u5f53\u524d\u503c"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    const-string v2, "\u6700\u5927\u503c"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    const-string v2, "\u6700\u5c0f\u503c"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    const-string v2, "\u5f53\u524d\u503c"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->oldVal:I

    .line 2
    iput p3, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->newVal:I

    return-void
.end method

.method public setCurrentValue(I)Lcom/wsw/cospa/widget/NumberPickerDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/NumberPickerDialog;->newVal:I

    return-object p0
.end method
