module HospitalsHelper
  def workflow_links(patient)
    if patient.workflow_state == 'waiting'
      a = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      a += link_to "Xray", xray_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      a += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      a += link_to "Leaving", leaving_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
    elsif patient.workflow_state == 'doctor'
      b = link_to "Xray", xray_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      b += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      b += link_to "Pay Bill", billpay_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
    elsif patient.workflow_state == 'xray'
      c = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      c += link_to "Surgery", surgery_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      c += link_to "Pay Bill", billpay_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
    elsif patient.workflow_state == 'surgery'
      d = link_to "Doctor", doctor_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      d += link_to "Xray", xray_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
      d += link_to "Pay Bill", billpay_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
    elsif patient.workflow_state == 'billpay'
      link_to "Leaving", leaving_hospital_patient_path(@hospital, patient), :class => 'box', method: :patch
    end
  end
end
